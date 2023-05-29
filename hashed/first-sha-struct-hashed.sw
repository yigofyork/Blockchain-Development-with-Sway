script;

use std::hash::{keccak256, sha256};

const MY_VALUE = 0x0000000x0x00000000x00000000000x000xx0xx0xxx00x0x000a0x000000x00x;        //example//

enum Blockchain {
    Polkadot: (),
    Ethereum: (),
    Avalanche: (),
} 

struct Contract {
        name: str[3],
        surname: str[3],
        blockchain: Blockchain,
    }

fn main() {
    let sha_hashed_struct = sha256(Contract {
            name: "Neo",
            surname: "Max",
            blockchain: Blockchain::Polkadot,
    });
    
    log(sha_hashed_struct);
}
