.class public abstract LZ0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZ0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(LZ0/j;LZ0/m;)LZ0/i;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LZ0/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LZ0/m;->a()I

    move-result p1

    invoke-interface {p0, v0, p1}, LZ0/j;->g(Ljava/lang/String;I)LZ0/i;

    move-result-object p0

    return-object p0
.end method

.method public static b(LZ0/j;LZ0/m;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LZ0/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LZ0/m;->a()I

    move-result p1

    invoke-interface {p0, v0, p1}, LZ0/j;->d(Ljava/lang/String;I)V

    return-void
.end method
