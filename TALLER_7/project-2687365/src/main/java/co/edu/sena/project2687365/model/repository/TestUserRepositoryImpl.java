package co.edu.sena.project2687365.model.repository;

import co.edu.sena.project2687365.model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public static void main(String[] args) throws SQLException {
        Repository<User> repository = new UserRepositoryImpl();

        System.out.println("========== saveObj Insert ==========");
        User userInsert = new User();
        userInsert.setUser_firstname("Juan");
        userInsert.setUser_lastname("Zarna");
        userInsert.setUser_email("xd@gmail.com");
        userInsert.setUser_password("1034278289");
        repository.saveObj(userInsert);
        User userInsert2 = new User();
        userInsert2.setUser_firstname("maicol");
        userInsert2.setUser_lastname("ayala");
        userInsert2.setUser_email("maicol@gmail.com");
        userInsert2.setUser_password("1034278289");
        repository.saveObj(userInsert2);

        System.out.println("========== listAllObj ==========");
        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== byIdObj ===========");
        System.out.println(repository.byIdObj(1));
        System.out.println();

        System.out.println("======= updateObj =======");
        User userUpdate = new User();
        userUpdate.setUser_id(2);
        userUpdate.setUser_firstname("liliana");
        userUpdate.setUser_lastname("gonzales");
        userUpdate.setUser_email("lili@example.com");
        userUpdate.setUser_password("firulais");
        repository.saveObj(userUpdate); // Use userUpdate en lugar de userInsert

        repository.listAllObj().forEach(System.out::println);
        System.out.println();

        System.out.println("========== deleteObj =========");
        repository.deleteObj(3);
        repository.listAllObj().forEach(System.out::println);
    }
}
