import Usuario from "../../models/usuario.js";
import bcrypt from "bcrypt";
import Sequelize from "sequelize";

const usuarioController = {
    registerForm: (req, res) => {
        res.render("usuario/register");
    },
    register: async (req, res) => {
        try {
            let { username, password, password_repeat } = req.body;
            if (password !== password_repeat) {
                let errorItem = new Sequelize.ValidationErrorItem({
                    message: "Las contraseñas no coinciden, joder!",
                    path: "password",
                    type: "Validation error",
                });
                throw new Sequelize.ValidationError("", [errorItem]);
            }
            let hash = await bcrypt.hash(password, 11);
            console.log(hash);
            let result = await Usuario.create({ username, password: hash });
            res.json(result);
        } catch (error) {
            if (error instanceof Sequelize.ValidationError) {
                console.log("errors", error.errors);
                if (error.errors.length > 0) {
                    if (error.errors[0].type === 'notNull Violation') {
                        error.message = "Todos los campos son obligatorios";
                    } else if (error.errors[0].type === 'unique violation') {
                        error.message = "El usuario ya existe";
                    }
                    else if (error.errors[0].type === 'Validation error') {
                        error.message = error.errors[0].message;
                    }
                }
                else {
                    console.log("message", error.message);
                }
            }
            else {
                error.message = "Error desconocido al registrarse";
            }
            res.render("usuario/register", { error: error.message });
        }
    },

    loginForm: (req, res) => {
        res.render("usuario/login");
    },
    login: async (req, res) => {
        try {
            let { username, password } = req.body;
            let usuarioGuardado = await Usuario.findOne({ where: { username } });
            if (!usuarioGuardado) {
                throw new Error("El usuario no existe");
            }
            let hash = usuarioGuardado.password;
            let iguales = await bcrypt.compare(password, hash);
            if (!iguales) {
                throw new Error("La contraseña no es correcta");
            }
            res.send("Usuario logueado");

        }
        catch (error) {
            res.render("usuario/login", { error: error.message });
        }
    }
}


export default usuarioController;