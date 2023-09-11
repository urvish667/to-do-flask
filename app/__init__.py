from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import os
  
# Setting up SQLlite database location  
file_path = os.path.abspath(os.getcwd())+"/todo.db"
  
# Initiazed flask app
app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///'+file_path

# Initiazed SQLlite object
db = SQLAlchemy(app)

from app import routes