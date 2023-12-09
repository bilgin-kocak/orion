mod input_0;
mod output_0;


use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::TensorTrait;
use orion::operators::tensor::U32Tensor;
use orion::operators::tensor::U32TensorPartialEq;
use orion::utils::assert_eq;

#[test]
#[available_gas(2000000000)]
fn test_unsqueeze_u32_3d() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.unsqueeze(array![5, 4, 2].span());

    assert_eq(y, z);
}
