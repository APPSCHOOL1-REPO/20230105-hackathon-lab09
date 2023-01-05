//
//  Bucket.swift
//  starcket
//
//  Created by geonhyeong on 2023/01/05.
//

import Foundation

struct Bucket: Codable, Identifiable {
	let id: String			// 문서 id
	let userId: String		// 사용자 id
	let detailId: [String]	// depth1, bucketdetail들의 id
	var icon: String		// icon
	var title: String		// 내용
	var isCheck: Bool		// 달성여부
	var pos: [Double]		// 좌표위치
	var shape: Int			// 캐릭터 모양
	var bgColor: Int		// 색상
	var updateAt: Date		// 수정일
	let createdAt: Date		// 생성일
}
