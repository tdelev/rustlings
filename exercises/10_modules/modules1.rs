// TODO: Fix the compiler error about calling a private function.
mod sausage_factory {
    // Don't let anybody outside of this module see this!
    fn get_secret_recipe() -> String {
        String::from("Ginger")
    }

<<<<<<< HEAD
    fn make_sausage() {
=======
    pub fn make_sausage() {
>>>>>>> master
        get_secret_recipe();
        println!("sausage!");
    }
}

fn main() {
    sausage_factory::make_sausage();
}
