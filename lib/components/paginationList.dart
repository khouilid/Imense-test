import 'package:flutter/material.dart';
import 'package:noname/config/appColors.dart';

class PaginationList extends StatefulWidget {
  const PaginationList({Key? key}) : super(key: key);

  @override
  State<PaginationList> createState() => _PaginationListState();
}

class _PaginationListState extends State<PaginationList> {
  
  final List<String> _menuItems = [
    '10',
    '9',
    '8',
    '7',
    '6',
    '5',
    '4',
    '3',
    '2',
    '1',
    '-1',
    '-2',
  ];
  final ScrollController _scrollController = ScrollController();

  int _selectedElementIndex = -1;

  // jump to next element by 100px letf or right
  // when user clicked one of he arrows
  void _jumpToLeftOrRight(bool toLetf) {
    _scrollController.jumpTo(toLetf
        ? _scrollController.offset - 100
        : _scrollController.offset + 100);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          InkWell(
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: AppColors.grey,
            ),
            onTap: () {
              _jumpToLeftOrRight(true);
            },
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _menuItems.length,
              controller: _scrollController,
              reverse: true,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  width: 50,
                  margin: const EdgeInsets.only(right: 3),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(45, 45),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.greyblur),
                        borderRadius: BorderRadius.circular(2),
                      ),
                      primary: _selectedElementIndex == index
                          ? AppColors.mov
                          : Colors.white,
                      elevation: .5,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedElementIndex = index;
                      });
                    },
                    child: Center(
                      child: Text(
                        _menuItems[index],
                        style: TextStyle(
                          fontSize: 15,
                          color: _selectedElementIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          InkWell(
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.grey,
            ),
            onTap: () {
              _jumpToLeftOrRight(false);
            },
          ),
        ],
      ),
    );
  }
}
