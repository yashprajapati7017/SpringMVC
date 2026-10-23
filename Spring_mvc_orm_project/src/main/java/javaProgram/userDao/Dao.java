package javaProgram.userDao;

import javaProgram.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class Dao {


    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    @Transactional
    public int saveUser(User user){
        Integer result=(Integer)hibernateTemplate.save(user);
        return result;
    }
    @Transactional
    public User loginUser(int id){
        return (User) this.hibernateTemplate.get(User.class,id);
    }

    public User searchStudent(int id){
        return (User) this.hibernateTemplate.get(User.class,id);
    }

    @Transactional
    public int deleteStudent(int id,String password){

        User result=(User)this.hibernateTemplate.get(User.class,id);
        if(!password.equals(result.getUserPassword())){
            return 1;
        }
        if(result!=null){
            this.hibernateTemplate.delete(result);
            return 0;
        }

        return 1;
    }

    public User updateUser(int id){
       return (User)hibernateTemplate.get(User.class,id);
    }

    @Transactional
    public boolean updateProfile(User formUser){

        User existingUser = hibernateTemplate.get(
                User.class, formUser.getId()
        );

        if (existingUser == null) {
            return false;
        }

        existingUser.setUserName(formUser.getUserName());
        existingUser.setUserEmail(formUser.getUserEmail());
        existingUser.setUserPassword(formUser.getUserPassword());
        existingUser.setGender(formUser.getGender());
        existingUser.setUserCourse(formUser.getUserCourse());
        existingUser.setDate(formUser.getDate());

        hibernateTemplate.update(existingUser);

        return true;
    }

}
