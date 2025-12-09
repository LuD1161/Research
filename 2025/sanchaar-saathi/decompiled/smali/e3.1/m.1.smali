.class public Le3/m;
.super LY2/o;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LY2/o;-><init>()V

    return-void
.end method


# virtual methods
.method public g(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x7f

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, LY2/o;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    sget-object v0, Le3/K;->f:Le3/K$a;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Le3/K$a;->a(I)Le3/K;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    const/16 v0, -0x7e

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p2}, LY2/o;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    sget-object p2, Le3/H;->c:Le3/H$a;

    invoke-virtual {p2, p1}, Le3/H$a;->a(Ljava/util/List;)Le3/H;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    const/16 v0, -0x7d

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, p2}, LY2/o;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_6

    sget-object p2, Le3/M;->c:Le3/M$a;

    invoke-virtual {p2, p1}, Le3/M$a;->a(Ljava/util/List;)Le3/M;

    move-result-object v1

    :cond_6
    return-object v1

    :cond_7
    invoke-super {p0, p1, p2}, LY2/o;->g(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Le3/K;

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Le3/K;

    invoke-virtual {p2}, Le3/K;->f()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le3/m;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Le3/H;

    if-eqz v0, :cond_1

    const/16 v0, 0x82

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Le3/H;

    invoke-virtual {p2}, Le3/H;->b()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le3/m;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Le3/M;

    if-eqz v0, :cond_2

    const/16 v0, 0x83

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    check-cast p2, Le3/M;

    invoke-virtual {p2}, Le3/M;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le3/m;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, LY2/o;->p(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
