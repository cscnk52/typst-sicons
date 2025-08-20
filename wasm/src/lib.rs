use wasm_minimal_protocol::*;

initiate_protocol!();

#[wasm_func]
fn simple_icons(slug: &[u8]) -> Result<Vec<u8>, String> {
    if let Some(icon) = simpleicons_rs::slug(
        std::str::from_utf8(slug).map_err(|_| "Invalid UTF-8".to_string())?
    ) {
        Ok(icon.svg.as_bytes().to_vec())
    } else {
        Err("No available Icon".to_string())
    }
}
