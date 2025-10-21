

import 'package:flutter/material.dart';
import 'package:star_menu/star_menu.dart';

final class ItemBuilder {
  ItemBuilder._();

  
  static Future<List<Widget>> buildLazyMenuItems() async {
    await Future.delayed(Duration(milliseconds: 500));
    
    return [
      _buildCircularItem(Icons.cloud_download, Colors.green),
      _buildCircularItem(Icons.cloud_upload, Colors.orange),
      _buildCircularItem(Icons.sync, Colors.purple),
    ];
  }
  
 static  List<Widget> buildCircularMenuItems() {
    return [
      _buildCircularItem(Icons.home, Colors.blue),
      _buildCircularItem(Icons.search, Colors.blue),
      _buildCircularItem(Icons.settings, Colors.blue),
      _buildCircularItem(Icons.favorite, Colors.blue),
      _buildCircularItem(Icons.person, Colors.blue),
    ];
  }
  
 static  List<Widget> buildLinearMenuItems() {
    return [
      _buildSquareItem(Icons.home, Colors.red),
      _buildSquareItem(Icons.search, Colors.red),
      _buildSquareItem(Icons.settings, Colors.red),
    ];
  }
  
 static  List<Widget> buildGridMenuItems() {
    return [
      _buildRoundedItem(Icons.camera, Colors.teal),
      _buildRoundedItem(Icons.photo, Colors.teal),
      _buildRoundedItem(Icons.video_call, Colors.teal),
      _buildRoundedItem(Icons.mic, Colors.teal),
      _buildRoundedItem(Icons.location_on, Colors.teal),
      _buildRoundedItem(Icons.contact_phone, Colors.teal),
    ];
  }
  
 static  List<Widget> buildAnimatedMenuItems() {
    return [
      _buildCircularItem(Icons.home, Colors.deepPurple),
      _buildCircularItem(Icons.search, Colors.deepPurple),
      _buildCircularItem(Icons.settings, Colors.deepPurple),
      _buildCircularItem(Icons.favorite, Colors.deepPurple).addStarMenu(
         items: subMenuEntries(),
        params: const StarMenuParameters(
          shape: MenuShape.linear,
          linearShapeParams: LinearShapeParams(
            angle: 120,
            space: 15,
          ),
          checkMenuScreenBoundaries: true,
        ),

      ),
    ];
  }
  
 static  Widget _buildCircularItem(IconData icon, Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Icon(icon, color: Colors.white, size: 24),
    );
  }
  
 static  Widget _buildSquareItem(IconData icon, Color color) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Icon(icon, color: Colors.white, size: 22),
    );
  }
  
  static Widget _buildRoundedItem(IconData icon, Color color) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon, color: Colors.white, size: 24),
    );
  }

  static // Build the list of sub-menu entries
  List<Widget> subMenuEntries() {
    return [
      const Chip(
        avatar: CircleAvatar(
          child: Text('SM'),
        ),
        label: Text('Home'),
      ),
      const Chip(
        avatar: CircleAvatar(
          child: Text('SM'),
        ),
        label: Text('Search'),
      ),
      const Chip(
        avatar: CircleAvatar(
          child: Text('SM'),
        ),
        label: Text('Settings'),
      ),
     
    ];
  }

}