﻿using Microsoft.EntityFrameworkCore.Migrations;

namespace BookStore.Migrations
{
    public partial class test : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Writers_Books_BookId",
                table: "Writers");

            migrationBuilder.DropIndex(
                name: "IX_Writers_BookId",
                table: "Writers");

            migrationBuilder.DropColumn(
                name: "BookId",
                table: "Writers");

            migrationBuilder.CreateIndex(
                name: "IX_Books_WriterId",
                table: "Books",
                column: "WriterId");

            migrationBuilder.AddForeignKey(
                name: "FK_Books_Writers_WriterId",
                table: "Books",
                column: "WriterId",
                principalTable: "Writers",
                principalColumn: "WriterId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Books_Writers_WriterId",
                table: "Books");

            migrationBuilder.DropIndex(
                name: "IX_Books_WriterId",
                table: "Books");

            migrationBuilder.AddColumn<int>(
                name: "BookId",
                table: "Writers",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Writers_BookId",
                table: "Writers",
                column: "BookId");

            migrationBuilder.AddForeignKey(
                name: "FK_Writers_Books_BookId",
                table: "Writers",
                column: "BookId",
                principalTable: "Books",
                principalColumn: "BookId",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
