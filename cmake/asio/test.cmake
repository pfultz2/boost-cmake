#
# Copyright (c) 2003-2017 Christopher M. Kohlhoff (chris at kohlhoff dot com)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#

# TODO: Add select versions

bcm_test(NAME basic_datagram_socket SOURCES basic_datagram_socket.cpp COMPILE_ONLY)
bcm_test(NAME basic_deadline_timer SOURCES basic_deadline_timer.cpp COMPILE_ONLY)
bcm_test(NAME basic_raw_socket SOURCES basic_raw_socket.cpp COMPILE_ONLY)
bcm_test(NAME basic_seq_packet_socket SOURCES basic_seq_packet_socket.cpp COMPILE_ONLY)
bcm_test(NAME basic_signal_set SOURCES basic_signal_set.cpp COMPILE_ONLY)
bcm_test(NAME basic_socket_acceptor SOURCES basic_socket_acceptor.cpp COMPILE_ONLY)
bcm_test(NAME basic_stream_socket SOURCES basic_stream_socket.cpp COMPILE_ONLY)
bcm_test(NAME basic_streambuf SOURCES basic_streambuf.cpp COMPILE_ONLY)
bcm_test(NAME basic_waitable_timer SOURCES basic_waitable_timer.cpp COMPILE_ONLY)
bcm_test(NAME buffer SOURCES buffer.cpp)
bcm_test(NAME buffer_select SOURCES buffer.cpp)
bcm_test(NAME buffered_read_stream SOURCES buffered_read_stream.cpp)
bcm_test(NAME buffered_read_stream_select SOURCES buffered_read_stream.cpp)
bcm_test(NAME buffered_stream SOURCES buffered_stream.cpp)
bcm_test(NAME buffered_stream_select SOURCES buffered_stream.cpp)
bcm_test(NAME buffered_write_stream SOURCES buffered_write_stream.cpp)
bcm_test(NAME buffered_write_stream_select SOURCES buffered_write_stream.cpp)
bcm_test(NAME buffers_iterator SOURCES buffers_iterator.cpp)
bcm_test(NAME buffers_iterator_select SOURCES buffers_iterator.cpp)
bcm_test(NAME completion_condition SOURCES completion_condition.cpp COMPILE_ONLY)
bcm_test(NAME connect SOURCES connect.cpp COMPILE_ONLY)
bcm_test(NAME coroutine SOURCES coroutine.cpp COMPILE_ONLY)
bcm_test(NAME datagram_socket_service SOURCES datagram_socket_service.cpp COMPILE_ONLY)
bcm_test(NAME deadline_timer_service SOURCES deadline_timer_service.cpp COMPILE_ONLY)
bcm_test(NAME deadline_timer SOURCES deadline_timer.cpp)
bcm_test(NAME deadline_timer_select SOURCES deadline_timer.cpp)
bcm_test(NAME asio_error SOURCES error.cpp)
bcm_test(NAME error_select SOURCES error.cpp)
bcm_test(NAME generic_basic_endpoint SOURCES generic/basic_endpoint.cpp COMPILE_ONLY)
bcm_test(NAME generic_datagram_protocol SOURCES generic/datagram_protocol.cpp COMPILE_ONLY)
bcm_test(NAME generic_raw_protocol SOURCES generic/raw_protocol.cpp COMPILE_ONLY)
bcm_test(NAME generic_seq_packet_protocol SOURCES generic/seq_packet_protocol.cpp COMPILE_ONLY)
bcm_test(NAME generic_stream_protocol SOURCES generic/stream_protocol.cpp COMPILE_ONLY)
bcm_test(NAME high_resolution_timer SOURCES high_resolution_timer.cpp COMPILE_ONLY)
bcm_test(NAME io_service SOURCES io_service.cpp)
bcm_test(NAME io_service_select SOURCES io_service.cpp)
bcm_test(NAME ip_address SOURCES ip/address.cpp COMPILE_ONLY)
bcm_test(NAME ip_address_v4 SOURCES ip/address_v4.cpp COMPILE_ONLY)
bcm_test(NAME ip_address_v6 SOURCES ip/address_v6.cpp COMPILE_ONLY)
bcm_test(NAME ip_basic_endpoint SOURCES ip/basic_endpoint.cpp COMPILE_ONLY)
bcm_test(NAME ip_basic_resolver SOURCES ip/basic_resolver.cpp COMPILE_ONLY)
bcm_test(NAME ip_basic_resolver_entry SOURCES ip/basic_resolver_entry.cpp COMPILE_ONLY)
bcm_test(NAME ip_basic_resolver_iterator SOURCES ip/basic_resolver_iterator.cpp COMPILE_ONLY)
bcm_test(NAME ip_basic_resolver_query SOURCES ip/basic_resolver_query.cpp COMPILE_ONLY)
bcm_test(NAME ip_host_name SOURCES ip/host_name.cpp)
bcm_test(NAME ip_host_name_select SOURCES ip/host_name.cpp)
bcm_test(NAME ip_icmp SOURCES ip/icmp.cpp)
bcm_test(NAME ip_icmp_select SOURCES ip/icmp.cpp)
bcm_test(NAME ip_multicast SOURCES ip/multicast.cpp)
bcm_test(NAME ip_multicast_select SOURCES ip/multicast.cpp)
bcm_test(NAME ip_resolver_query_base SOURCES ip/resolver_query_base.cpp COMPILE_ONLY)
bcm_test(NAME ip_resolver_service SOURCES ip/resolver_service.cpp COMPILE_ONLY)
bcm_test(NAME ip_tcp SOURCES ip/tcp.cpp)
bcm_test(NAME ip_tcp_select SOURCES ip/tcp.cpp)
bcm_test(NAME ip_udp SOURCES ip/udp.cpp)
bcm_test(NAME ip_udp_select SOURCES ip/udp.cpp)
bcm_test(NAME ip_unicast SOURCES ip/unicast.cpp)
bcm_test(NAME ip_unicast_select SOURCES ip/unicast.cpp)
bcm_test(NAME ip_v6_only SOURCES ip/v6_only.cpp)
bcm_test(NAME ip_v6_only_select SOURCES ip/v6_only.cpp)
bcm_test(NAME is_read_buffered SOURCES is_read_buffered.cpp)
bcm_test(NAME is_read_buffered_select SOURCES is_read_buffered.cpp)
bcm_test(NAME is_write_buffered SOURCES is_write_buffered.cpp)
bcm_test(NAME is_write_buffered_select SOURCES is_write_buffered.cpp)
bcm_test(NAME local_basic_endpoint SOURCES local/basic_endpoint.cpp COMPILE_ONLY)
bcm_test(NAME local_connect_pair SOURCES local/connect_pair.cpp COMPILE_ONLY)
bcm_test(NAME local_datagram_protocol SOURCES local/datagram_protocol.cpp COMPILE_ONLY)
bcm_test(NAME local_stream_protocol SOURCES local/stream_protocol.cpp COMPILE_ONLY)
bcm_test(NAME placeholders SOURCES placeholders.cpp COMPILE_ONLY)
bcm_test(NAME posix_basic_descriptor SOURCES posix/basic_descriptor.cpp COMPILE_ONLY)
bcm_test(NAME posix_basic_stream_descriptor SOURCES posix/basic_stream_descriptor.cpp COMPILE_ONLY)
bcm_test(NAME posix_descriptor_base SOURCES posix/descriptor_base.cpp COMPILE_ONLY)
bcm_test(NAME posix_stream_descriptor SOURCES posix/stream_descriptor.cpp COMPILE_ONLY)
bcm_test(NAME posix_stream_descriptor_service SOURCES posix/stream_descriptor_service.cpp COMPILE_ONLY)
bcm_test(NAME raw_socket_service SOURCES raw_socket_service.cpp COMPILE_ONLY)
bcm_test(NAME read SOURCES read.cpp)
bcm_test(NAME read_select SOURCES read.cpp)
bcm_test(NAME read_at SOURCES read_at.cpp)
bcm_test(NAME read_at_select SOURCES read_at.cpp)
bcm_test(NAME read_until SOURCES read_until.cpp)
bcm_test(NAME read_until_select SOURCES read_until.cpp)
bcm_test(NAME seq_packet_socket_service SOURCES seq_packet_socket_service.cpp COMPILE_ONLY)
bcm_test(NAME signal_set SOURCES signal_set.cpp)
bcm_test(NAME signal_set_select SOURCES signal_set.cpp)
bcm_test(NAME signal_set_service SOURCES signal_set_service.cpp COMPILE_ONLY)
bcm_test(NAME socket_acceptor_service SOURCES socket_acceptor_service.cpp COMPILE_ONLY)
bcm_test(NAME socket_base SOURCES socket_base.cpp)
bcm_test(NAME socket_base_select SOURCES socket_base.cpp)
bcm_test(NAME steady_timer SOURCES steady_timer.cpp COMPILE_ONLY)
bcm_test(NAME strand SOURCES strand.cpp)
bcm_test(NAME strand_select SOURCES strand.cpp)
bcm_test(NAME stream_socket_service SOURCES stream_socket_service.cpp COMPILE_ONLY)
bcm_test(NAME streambuf SOURCES streambuf.cpp)
bcm_test(NAME streambuf_select SOURCES streambuf.cpp)
bcm_test(NAME system_timer SOURCES system_timer.cpp COMPILE_ONLY)
bcm_test(NAME time_traits SOURCES time_traits.cpp COMPILE_ONLY)
bcm_test(NAME wait_traits SOURCES wait_traits.cpp COMPILE_ONLY)
bcm_test(NAME waitable_timer_service SOURCES waitable_timer_service.cpp COMPILE_ONLY)
if(WIN32)
bcm_test(NAME windows/basic_handle SOURCES windows/basic_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/basic_object_handle SOURCES windows/basic_object_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/basic_random_access_handle SOURCES windows/basic_random_access_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/basic_stream_handle SOURCES windows/basic_stream_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/object_handle SOURCES windows/object_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/object_handle_service SOURCES windows/object_handle_service.cpp COMPILE_ONLY)
bcm_test(NAME windows/overlapped_ptr SOURCES windows/overlapped_ptr.cpp COMPILE_ONLY)
bcm_test(NAME windows/random_access_handle SOURCES windows/random_access_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/random_access_handle_service SOURCES windows/random_access_handle_service.cpp COMPILE_ONLY)
bcm_test(NAME windows/stream_handle SOURCES windows/stream_handle.cpp COMPILE_ONLY)
bcm_test(NAME windows/stream_handle_service SOURCES windows/stream_handle_service.cpp COMPILE_ONLY)
endif()
bcm_test(NAME write SOURCES write.cpp)
bcm_test(NAME write_select SOURCES write.cpp)
bcm_test(NAME write_at SOURCES write_at.cpp)
bcm_test(NAME write_at_select SOURCES write_at.cpp)

if(OpenSSL_FOUND)
bcm_test(NAME basic_context SOURCES ssl/basic_context.cpp COMPILE_ONLY)
bcm_test(NAME context_base SOURCES ssl/context_base.cpp COMPILE_ONLY)
bcm_test(NAME context_service SOURCES ssl/context_service.cpp COMPILE_ONLY)
bcm_test(NAME context SOURCES ssl/context.cpp COMPILE_ONLY)
bcm_test(NAME asio_ssl_error SOURCES ssl/error.cpp COMPILE_ONLY)
bcm_test(NAME rfc2818_verification SOURCES ssl/rfc2818_verification.cpp COMPILE_ONLY)
bcm_test(NAME stream_base SOURCES ssl/stream_base.cpp COMPILE_ONLY)
bcm_test(NAME stream_service SOURCES ssl/stream_service.cpp COMPILE_ONLY)
bcm_test(NAME stream SOURCES ssl/stream.cpp COMPILE_ONLY)
endif()

