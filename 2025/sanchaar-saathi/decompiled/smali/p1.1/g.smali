.class public Lp1/g;
.super Lp1/d;
.source "SourceFile"


# instance fields
.field public final j:Lp1/i;


# direct methods
.method public constructor <init>(ZLp1/i;)V
    .locals 3

    invoke-direct {p0}, Lp1/d;-><init>()V

    iput-boolean p1, p0, Lp1/d;->a:Z

    iput-object p2, p0, Lp1/g;->j:Lp1/i;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x10

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->g(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lp1/d;->b:I

    const-wide/16 v1, 0x1c

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->j(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lp1/d;->c:J

    const-wide/16 v1, 0x20

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->j(Ljava/nio/ByteBuffer;J)J

    move-result-wide v1

    iput-wide v1, p0, Lp1/d;->d:J

    const-wide/16 v1, 0x2a

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->g(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lp1/d;->e:I

    const-wide/16 v1, 0x2c

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->g(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lp1/d;->f:I

    const-wide/16 v1, 0x2e

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->g(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lp1/d;->g:I

    const-wide/16 v1, 0x30

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->g(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lp1/d;->h:I

    const-wide/16 v1, 0x32

    invoke-virtual {p2, v0, v1, v2}, Lp1/i;->g(Ljava/nio/ByteBuffer;J)I

    move-result p1

    iput p1, p0, Lp1/d;->i:I

    return-void
.end method


# virtual methods
.method public a(JI)Lp1/c;
    .locals 7

    new-instance v6, Lp1/a;

    iget-object v1, p0, Lp1/g;->j:Lp1/i;

    move-object v0, v6

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lp1/a;-><init>(Lp1/i;Lp1/d;JI)V

    return-object v6
.end method

.method public b(J)Lp1/e;
    .locals 2

    new-instance v0, Lp1/j;

    iget-object v1, p0, Lp1/g;->j:Lp1/i;

    invoke-direct {v0, v1, p0, p1, p2}, Lp1/j;-><init>(Lp1/i;Lp1/d;J)V

    return-object v0
.end method

.method public c(I)Lp1/f;
    .locals 2

    new-instance v0, Lp1/l;

    iget-object v1, p0, Lp1/g;->j:Lp1/i;

    invoke-direct {v0, v1, p0, p1}, Lp1/l;-><init>(Lp1/i;Lp1/d;I)V

    return-object v0
.end method
