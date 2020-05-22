pub mod mylib;

use mylib::{Block, Energe};

trait Machine {
    fn new() -> Self {}

    fn run(&self) -> Energe {}

    fn gen_block() -> Block {
        let matchine = Self::new();
        let energe = matchine.run();
        Block::from_energe(&energe)
    }
}

const ID: &'static str = "ID";

#[derive(Clone, Debug)]
pub struct MyMachine<'a> {
	id: &'a str
}

impl<'a> Machine for MyMachine<'a> {
	fn new() -> {
		MyMachine { id: ID }
	}

	fn run(&self) -> Block {
		Block::make(&self.id)
	}
}
