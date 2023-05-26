script;

enum HandleError {
    MultiplyTwoZero: (),
}

fn multiply(x: u64, y: u64) -> Result<u64, HandleError> {
    if (x == 0 && y == 0) {
        return Result::Err(HandleError::MultiplyTwoZero);
    } else {
        Result::Ok(x * y)
    }
}

fn main() -> Result<u64, str[6]> {
    let result = multiply(20, 2);
    match result {
        Result::Ok(val) => Result::Ok(val),
        Result::Err(HandleError::MultiplyTwoZero) => Result::Err("Failed"),
    }
} 
