import 'package:car_wash/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, numOfFiles;
  // final int?  percentage;
  final Color? color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    // this.totalStorage,
    this.numOfFiles,
    // this.percentage,
    this.color,
  });
}

List demoMyFiles = [
  CloudStorageInfo(
    title: "TotalBookings",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/booking.svg",
    // totalStorage: "1.9GB",
    color: primaryColor,
    // percentage: 35,
  ),
  CloudStorageInfo(
    title: "Total Earnings",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/dollar.svg",
    // totalStorage: "2.9GB",
    color: Color(0xFFFFA113),
    // percentage: 35,
  ),
  CloudStorageInfo(
    title: "Providers",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/provide.svg",
    // totalStorage: "1GB",
    color: Color(0xFFA4CDFF),
    // percentage: 10,
  ),
  CloudStorageInfo(
    title: "Customers",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/people.svg",
    // totalStorage: "7.3GB",
    color: Color(0xFF007EE5),
    // percentage: 78,
  ),
];
