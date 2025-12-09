.class public final LO3/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LO3/r$a;-><init>()V

    return-void
.end method

.method public static synthetic d(LO3/r$a;Ljava/io/File;ZILjava/lang/Object;)LO3/r;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LO3/r$a;->a(Ljava/io/File;Z)LO3/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(LO3/r$a;Ljava/lang/String;ZILjava/lang/Object;)LO3/r;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LO3/r$a;->b(Ljava/lang/String;Z)LO3/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LO3/r$a;Ljava/nio/file/Path;ZILjava/lang/Object;)LO3/r;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LO3/r$a;->c(Ljava/nio/file/Path;Z)LO3/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/File;Z)LO3/r;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "toString()"

    invoke-static {p1, v0}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, LO3/r$a;->b(Ljava/lang/String;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Z)LO3/r;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, LP3/c;->k(Ljava/lang/String;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/nio/file/Path;Z)LO3/r;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LO3/r$a;->b(Ljava/lang/String;Z)LO3/r;

    move-result-object p1

    return-object p1
.end method
