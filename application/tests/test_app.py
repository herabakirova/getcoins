import unittest
from app import app

class CryptoPriceServiceTestCase(unittest.TestCase):

    # This method sets up the test client before each test
    def setUp(self):
        self.client = app.test_client()
        self.client.testing = True

    # Test for the / route
    def test_home(self):
        response = self.client.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b"Welcome to the Crypto Price Service", response.data)

    # Test for the /bitcoin route
    def test_bitcoin_price(self):
        response = self.client.get('/bitcoin')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'bitcoin', response.data)

    # Test for the /ethereum route
    def test_ethereum_price(self):
        response = self.client.get('/ethereum')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'ethereum', response.data)

    # This method runs after each test
    def tearDown(self):
        pass

if __name__ == '__main__':
    unittest.main()