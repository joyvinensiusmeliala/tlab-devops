#!/bin/bash

# Fungsi untuk memeriksa apakah sebuah bilangan prima atau bukan
is_prime() {
    num=$1
    if [ $num -lt 2 ]; then
        echo "bilangan ini bukan bilangan prima"
        return
    fi

    # Loop dari 2 hingga setengah dari bilangan tersebut
    for ((i = 2; i <= num / 2; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "bilangan ini bukan bilangan prima"
            return
        fi
    done
    echo "bilangan ini adalah bilangan prima"
}

# Memeriksa apakah argumen yang diberikan adalah bilangan
if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Masukkan bilangan bulat sebagai argumen"
    exit 1
fi

# Memanggil fungsi is_prime dengan argumen yang diberikan
is_prime $1
