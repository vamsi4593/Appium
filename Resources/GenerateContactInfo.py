import random
import string


class GenerateContactInfo:

    def __init__(self):
        pass

    @staticmethod
    def create_firstname(prefixvalue):
        print("creating firstname")
        num = ''.join((random.choice(string.digits) for i in range(4)))
        firstname = prefixvalue + num
        print(firstname)
        return firstname

    @staticmethod
    def create_lastname(prefixvalue):
        print("creating lastname")
        num = ''.join((random.choice(string.digits) for i in range(4)))
        lastname = prefixvalue + num
        print(lastname)
        return lastname

    @staticmethod
    def create_phonenumber():
        print("creating phonenumber")
        num = ''.join(random.choice(string.digits) for i in range(9))
        phonenumber = "+358" + num
        print(phonenumber)
        return phonenumber




if __name__ == "__main__":
    gen = GenerateContactInfo()
    gen.create_firstname('first')
    gen.create_lastname('last')
    gen.create_phonenumber()
