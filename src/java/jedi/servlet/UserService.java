/**
 *
 * Descrição:Classe UserService
 *
 *
 * @author Fabricio Nogueira
 *
 * @since 10-Apr-2013
 *
 * @version 1.0.0
 *
 */

package jedi.servlet;


public class UserService {

    public String authenticateUser(String login, String nome){
        if(login.equals("1") && nome.equals("1")){
            return nome;
        }else{
            return null;
        }
    }

}
