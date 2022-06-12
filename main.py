from sqlalchemy.orm import declarative_base
from sqlalchemy import Column,String,DateTime,Integer
from datetime import datetime
Base = declarative_base()


"""
class User
    id int
    username str
    email str
    date_created datetime

"""

class User(Base):
    __tablename__ = 'users'
    id = Column(Integer(), primary_key=True)
    username = Column(String(24), nullable=False, unique=True)      # specify the max length of strings in this column inside String()
    email = Column(String(100), nullable=True, unique=True)
    date_created = Column(DateTime(), default=datetime.utcnow)

    def __repr__(self):
        return f"<User: {self.username} email = {self.email}>"

new_user = User(id=1,username="Brian",email="brianc.boston@gmail.com")
print(new_user)

