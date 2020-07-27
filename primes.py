"""
Your module documentation here
"""
class PrimeClass(object):
    """
    Your class documentation here
    """
    def is_prime(self, num_int):
        """
        Your method documentation here
        """
        # your primes code here
        if num_int <  2:
            return False
        for i in range(2, num_int):
            if num_int % i == 0:
                return False
        return True
valor = int(input("Introduzca un numero: "))
primaro = PrimeClass()
primaro.is_prime(valor)
