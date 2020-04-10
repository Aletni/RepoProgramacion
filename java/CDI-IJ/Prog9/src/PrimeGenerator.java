class PrimeGenerator extends Thread {
    @Override

    public void run() {
        int number = 1;
        // This bucle never ends... until is interrupted
        while (true) {
            if (isPrime(number)) {
                System.out.printf("Number %d is Prime\n", number);
            }
            // When is interrupted, write a message and ends
            if (isInterrupted()) {
                System.out.printf("The Prime Generator has been Interrupted\n");
                return;
            }
            number++;
        }
    }

    private boolean isPrime(int number) {
        if (number <= 2) {
            return true;
        }
        for (int i = 2; i < number; i++) {
            if ((number % i) == 0) {
                return false;
            }
        }
        return true;
    }
}