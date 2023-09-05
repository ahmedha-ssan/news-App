import 'package:flutter/material.dart';
import 'package:newsapp/models/articlel_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articalModel.image ??
                "https://i.ytimg.com/vi/RytjDJ5bUvs/maxresdefault.jpg",
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          articalModel.subTitle ?? '',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}












// import 'package:flutter/material.dart';
// import 'package:newsapp/models/articlel_model.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({super.key, required this.article});
//   final ArticalModel article;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       alignment: Alignment.bottomCenter,
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6))),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: Image.network(
//               article.image ?? '',
//               height: 200,
//               width: MediaQuery.of(context).size.width,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(
//             height: 12,
//           ),
//           Text(
//             article.title,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//               color: Colors.black87,
//               fontSize: 20,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           const SizedBox(
//             height: 4,
//           ),
//           Text(
//             article.subTitle ?? '',
//             maxLines: 2,
//             style: TextStyle(color: Colors.grey, fontSize: 14),
//           )
//         ],
//       ),
//     );
//   }
// }
