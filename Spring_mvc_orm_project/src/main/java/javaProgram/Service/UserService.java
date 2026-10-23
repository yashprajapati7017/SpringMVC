package javaProgram.Service;

import javaProgram.model.User;
import javaProgram.userDao.Dao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    @Autowired
    Dao dao;

    public int createUser(User user){
        return dao.saveUser(user);
    }

    public User loginStudent(int id,String password){
        User fetchUser= (User) dao.loginUser(id);

        if (fetchUser == null) {
            return null;
        }

        if (!password.equals(fetchUser.getUserPassword())) {
            return null;
        }
        else{
            return fetchUser;
        }
    }

    public User searchUser(int id,String name){
        User fetchUser=(User) dao.searchStudent(id);

        if (fetchUser == null) {
            return null;
        }

        if(!name.equals(fetchUser.getUserName())){
            return null;
        }
        return fetchUser;
    }

    public int deleteUser(int id,String password){

        int result=dao.deleteStudent(id,password);
        return result;
    }

    public User update(int id,String password){
        User fetchUser= (User) dao.updateUser(id);

        if (fetchUser == null) {
            return null;
        }

        if (!password.equals(fetchUser.getUserPassword())) {
            return null;
        }
        else{
            return fetchUser;
        }
    }

    public boolean UserProfile(User user){

       return dao.updateProfile(user);
    }

}
