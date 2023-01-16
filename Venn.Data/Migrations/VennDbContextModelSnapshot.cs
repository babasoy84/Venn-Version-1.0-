﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Venn.Data;

#nullable disable

namespace Venn.Data.Migrations
{
    [DbContext(typeof(VennDbContext))]
    partial class VennDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.8")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("RoomUser", b =>
                {
                    b.Property<int>("RoomsId")
                        .HasColumnType("int");

                    b.Property<int>("UsersId")
                        .HasColumnType("int");

                    b.HasKey("RoomsId", "UsersId");

                    b.HasIndex("UsersId");

                    b.ToTable("RoomUser");
                });

            modelBuilder.Entity("Venn.Models.Models.Concretes.Message", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<byte[]>("Data")
                        .IsRequired()
                        .HasColumnType("varbinary(max)");

                    b.Property<int>("FromUserId")
                        .HasColumnType("int");

                    b.Property<string>("FromUserImageSource")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("FromUserUsername")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("MessageType")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("SendingTime")
                        .HasColumnType("datetime2");

                    b.Property<int?>("ToRoomId")
                        .HasColumnType("int");

                    b.Property<int?>("ToUserId")
                        .HasColumnType("int");

                    b.Property<bool>("isSelf")
                        .HasColumnType("bit");

                    b.HasKey("Id");

                    b.HasIndex("FromUserId");

                    b.HasIndex("ToRoomId");

                    b.HasIndex("ToUserId");

                    b.ToTable("Message");
                });

            modelBuilder.Entity("Venn.Models.Models.Concretes.Room", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("ImageSource")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("Room");
                });

            modelBuilder.Entity("Venn.Models.Models.Concretes.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<DateTime>("DateOfBirth")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("ImageSource")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Password")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Username")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id");

                    b.ToTable("User");
                });

            modelBuilder.Entity("RoomUser", b =>
                {
                    b.HasOne("Venn.Models.Models.Concretes.Room", null)
                        .WithMany()
                        .HasForeignKey("RoomsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Venn.Models.Models.Concretes.User", null)
                        .WithMany()
                        .HasForeignKey("UsersId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("Venn.Models.Models.Concretes.Message", b =>
                {
                    b.HasOne("Venn.Models.Models.Concretes.User", "FromUser")
                        .WithMany("Messages")
                        .HasForeignKey("FromUserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("Venn.Models.Models.Concretes.Room", "ToRoom")
                        .WithMany("Messages")
                        .HasForeignKey("ToRoomId");

                    b.HasOne("Venn.Models.Models.Concretes.User", "ToUser")
                        .WithMany()
                        .HasForeignKey("ToUserId");

                    b.Navigation("FromUser");

                    b.Navigation("ToRoom");

                    b.Navigation("ToUser");
                });

            modelBuilder.Entity("Venn.Models.Models.Concretes.Room", b =>
                {
                    b.Navigation("Messages");
                });

            modelBuilder.Entity("Venn.Models.Models.Concretes.User", b =>
                {
                    b.Navigation("Messages");
                });
#pragma warning restore 612, 618
        }
    }
}