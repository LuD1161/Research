.class public abstract LZ0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LZ0/m;I)LZ0/i;
    .locals 2

    const-string v0, "generationalId"

    invoke-static {p0, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LZ0/i;

    invoke-virtual {p0}, LZ0/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, LZ0/m;->a()I

    move-result p0

    invoke-direct {v0, v1, p0, p1}, LZ0/i;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method
