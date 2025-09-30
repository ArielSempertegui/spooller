package net.ausiasmarch.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.ausiasmarch.exception.ResourceNotFoundException;
import net.ausiasmarch.model.Usuario;

public class UsuarioDAO {
    
    private final Connection connection;

    public UsuarioDAO(Connection connection){
        this.connection = connection;
    }

    public Usuario get(int id) throws SQLException {

        try(PreparedStatement pstmt = connection.prepareStatement("select * from usuario where id=?")){
            pstmt.setInt(1, id);
            try(ResultSet rs = pstmt.executeQuery()){
                if (rs.next()) {
                    return new Usuario(
                        rs.getInt("id"),
                        rs.getString("username"),
                        rs.getString("nombre"),
                        rs.getString("apellido1"),
                        rs.getString("apellido2")
                    );
                } else {
                    throw new ResourceNotFoundException("Usuario con id "+id+" not found.");
                }
            }
        }
    }

}
