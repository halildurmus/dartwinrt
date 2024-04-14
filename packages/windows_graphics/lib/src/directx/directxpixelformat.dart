// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies pixel formats, which includes fully-typed and type-less formats.
/// This is a Windows Runtime equivalent of the Desktop DXGI_FORMAT enumeration.
enum DirectXPixelFormat implements WinRTEnum {
  unknown(0),
  r32G32B32A32Typeless(1),
  r32G32B32A32Float(2),
  r32G32B32A32UInt(3),
  r32G32B32A32Int(4),
  r32G32B32Typeless(5),
  r32G32B32Float(6),
  r32G32B32UInt(7),
  r32G32B32Int(8),
  r16G16B16A16Typeless(9),
  r16G16B16A16Float(10),
  r16G16B16A16UIntNormalized(11),
  r16G16B16A16UInt(12),
  r16G16B16A16IntNormalized(13),
  r16G16B16A16Int(14),
  r32G32Typeless(15),
  r32G32Float(16),
  r32G32UInt(17),
  r32G32Int(18),
  r32G8X24Typeless(19),
  d32FloatS8X24UInt(20),
  r32FloatX8X24Typeless(21),
  x32TypelessG8X24UInt(22),
  r10G10B10A2Typeless(23),
  r10G10B10A2UIntNormalized(24),
  r10G10B10A2UInt(25),
  r11G11B10Float(26),
  r8G8B8A8Typeless(27),
  r8G8B8A8UIntNormalized(28),
  r8G8B8A8UIntNormalizedSrgb(29),
  r8G8B8A8UInt(30),
  r8G8B8A8IntNormalized(31),
  r8G8B8A8Int(32),
  r16G16Typeless(33),
  r16G16Float(34),
  r16G16UIntNormalized(35),
  r16G16UInt(36),
  r16G16IntNormalized(37),
  r16G16Int(38),
  r32Typeless(39),
  d32Float(40),
  r32Float(41),
  r32UInt(42),
  r32Int(43),
  r24G8Typeless(44),
  d24UIntNormalizedS8UInt(45),
  r24UIntNormalizedX8Typeless(46),
  x24TypelessG8UInt(47),
  r8G8Typeless(48),
  r8G8UIntNormalized(49),
  r8G8UInt(50),
  r8G8IntNormalized(51),
  r8G8Int(52),
  r16Typeless(53),
  r16Float(54),
  d16UIntNormalized(55),
  r16UIntNormalized(56),
  r16UInt(57),
  r16IntNormalized(58),
  r16Int(59),
  r8Typeless(60),
  r8UIntNormalized(61),
  r8UInt(62),
  r8IntNormalized(63),
  r8Int(64),
  a8UIntNormalized(65),
  r1UIntNormalized(66),
  r9G9B9E5SharedExponent(67),
  r8G8B8G8UIntNormalized(68),
  g8R8G8B8UIntNormalized(69),
  bC1Typeless(70),
  bC1UIntNormalized(71),
  bC1UIntNormalizedSrgb(72),
  bC2Typeless(73),
  bC2UIntNormalized(74),
  bC2UIntNormalizedSrgb(75),
  bC3Typeless(76),
  bC3UIntNormalized(77),
  bC3UIntNormalizedSrgb(78),
  bC4Typeless(79),
  bC4UIntNormalized(80),
  bC4IntNormalized(81),
  bC5Typeless(82),
  bC5UIntNormalized(83),
  bC5IntNormalized(84),
  b5G6R5UIntNormalized(85),
  b5G5R5A1UIntNormalized(86),
  b8G8R8A8UIntNormalized(87),
  b8G8R8X8UIntNormalized(88),
  r10G10B10XRBiasA2UIntNormalized(89),
  b8G8R8A8Typeless(90),
  b8G8R8A8UIntNormalizedSrgb(91),
  b8G8R8X8Typeless(92),
  b8G8R8X8UIntNormalizedSrgb(93),
  bC6HTypeless(94),
  bC6H16UnsignedFloat(95),
  bC6H16Float(96),
  bC7Typeless(97),
  bC7UIntNormalized(98),
  bC7UIntNormalizedSrgb(99),
  ayuv(100),
  y410(101),
  y416(102),
  nV12(103),
  p010(104),
  p016(105),
  opaque420(106),
  yuy2(107),
  y210(108),
  y216(109),
  nV11(110),
  aI44(111),
  iA44(112),
  p8(113),
  a8P8(114),
  b4G4R4A4UIntNormalized(115),
  p208(130),
  v208(131),
  v408(132),
  samplerFeedbackMinMipOpaque(189),
  samplerFeedbackMipRegionUsedOpaque(190);

  @override
  final int value;

  const DirectXPixelFormat(this.value);

  factory DirectXPixelFormat.from(int value) =>
      DirectXPixelFormat.values.byValue(value);
}
