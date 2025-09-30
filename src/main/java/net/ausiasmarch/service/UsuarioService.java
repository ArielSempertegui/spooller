package net.ausiasmarch.service;

import java.sql.Connection;
import java.sql.SQLException;

import net.ausiasmarch.connection.HikariPool;
import net.ausiasmarch.dao.UsuarioDAO;
import net.ausiasmarch.model.Usuario;

public class UsuarioService {
    
    public Usuario get(int id) throws SQLException {

        try(Connection connection = HikariPool.getPool().getConnection()){
            UsuarioDAO usuarioDAO = new UsuarioDAO(connection);
            return usuarioDAO.get(id);
        }
    }
}
