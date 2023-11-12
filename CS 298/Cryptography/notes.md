### Possible Assignent (This is not required?)
Find a recent cryptographic algorithm, from the hashing, symmetric, and asymmetric algorithms.

Find an article about cryptography. You may find this from the Web of Science. Find the title, objective, problem statement, methodology. Get the result of what happens.

Citation style used for CS generally depends upon the target journal.

## Cryptography vs Steganography
- Steganography (usually an image)
    - Message is created, converted into binary, then broken into pieces.
    - Each piece is hidden in the metadata for the image.
- Cryptography
    - Originally used by Caesar
    - Message is created, converted into binary, then scambled usng a specific key.
    - Cleartext messages (sent without encryption)
        - Cleartext is but into the algorithm in order to be encrypted.
        - This process is done using a key, which must be sent or calculated by the recipient in order to decrypt it.
    - Basic protections (CIAAN)
        - These must always be present, otherwise your algorithm isn't very good.
        - **Confidentiality** - Only authorized parties can view.
        - **Integrity** - Information can't be changed by anyone that isn't authorized.
        - **Availability** - Authorized users can always access.
        - **Authentication** - Sender can be verified.
        - **Non-Repudiation** - Proves that a use performed an action (like changing the data)
    - Various Algorithms
        - **Stream Cipher** - takes one character and replaces it with another.
        - **Block Cipher** - changes an entire block of plaintext at a time.
        - **Sponge Function** - takes an input string and returns a string of any requested length. (5 characters to 12, etc)

## Hash Algorithms
- The most basic type of cryptographic algorithms.
- Creates a very unique digital fingerprint.
- The digest represents the contents.
- *Cannot* be unhashed. Contents are lost upon creation.
- Usually used for comparison, because it's fast and very unique.
- Has various characteristics:
    - **Fixed Size** - Short and long datasets have the same size hash.
    - **Unique** - Two values cannot share the same hash.
    - **Original** - Dataset cannot be created to have a predetermined hash.
    - **Secure** - Hashes cannot be reverted into anything.
- These algorithms are generally used to verify the integrity of the file.
- Some common algorithms:
    - **Message Digest** (MD5 now, has collisions)
    - **Secure Hash Algorithm** - More secure that MD, SHA3 uses a sponge function.
    - **Whirlpool** - Recent, creates a hash of 512 bits.
    - **RIPEMD** - Race Integrit Primities Evaluation Message Digest. Might need to do more research on that.

## Symmetric Cryptographic Algorithms
- Use the same single key to encrypt and decrypt.
    - This is the original way that encryption worked.
- These do not satisfy authenticity and non-repudiation.
- Client encrypts data, then it is transmitted. Server then decrypts and reads.
- Keys are transmitted in various ways, generally giving way to asymmetric encryption.
    - This ends up meaning that this looks very similar to a hash.
- Example algorithms:
    - **Data Encryption Standard** - uses a 56-bit key and is a block cipher.
    - **Triple Data Encryption Standard (3DES)** - Designed to replace DES.
        - Uses 3 rounds of encryption. Ciphertext of first round becomes input for second iteration, and so on.
        - More secure versions use different keys for every single round.

## Asymmetric Cryptography Algorithms
- Sender and recipients use two different encryption keys.
    - Both parties have a public and private key.
    - These keys are created using "one way mathematical equations." They are not easily found, in fact they generally take longer than the age of the universe to guess/brute force.
- General procedure:
    - Hash is created by sender.
    - Hash is encrypted.
    - Both encrypted message and digest are sent to recipient.
    - Message is decrypted by recipient.
    - Match digests of data.
- Examples of algorithms:
    - Advanced Encryption Standard (AES)
    - Blowfish
    - Rivest Cipher
    - International Data Encryption Algorithm
    - One-time Pad (OTP)
        - Sometimes known as One Time Password.