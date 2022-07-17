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
    title: "Total Bookings",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/booking.svg",
    // totalStorage: "1.9GB",
    color: Colors.black,
    // percentage: 35,primaryColor
  ),
  CloudStorageInfo(
    title: "Total Earnings",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/dollar.svg",
    // totalStorage: "2.9GB",
    color: Colors.black,
    // percentage: 35,Color(0xFFFFA113)
  ),
  CloudStorageInfo(
    title: "Providers",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/provide.svg",
    // totalStorage: "1GB",
    color: Colors.black,
    // percentage: 10,Color(0xFFA4CDFF)
  ),
  CloudStorageInfo(
    title: "Total Customers",
    numOfFiles: "More Info...",
    svgSrc: "assets/icons/people.svg",
    // totalStorage: "7.3GB",
    color: Colors.black,
    // percentage: 78,Color(0xFF007EE5)
  ),
];
