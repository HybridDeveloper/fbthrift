/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

use crate::{Framing, Protocol, ProtocolDecoded, ProtocolEncodedFinal};
use std::sync::Arc;
use tokio_service::Service;

pub trait ClientFactory {
    type Api: ?Sized;

    fn new<P, T>(protocol: P, transport: T) -> Arc<Self::Api>
    where
        P: Protocol<Frame = T> + 'static,
        T: Service<Request = ProtocolEncodedFinal<P>, Response = ProtocolDecoded<P>>
            + Framing
            + Send
            + Sync
            + 'static,
        T::Future: Send + 'static,
        T::Error: Into<failure::Error> + 'static;
}