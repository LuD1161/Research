.class public final LO3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO3/u$a;
    }
.end annotation


# static fields
.field public static final h:LO3/u$a;


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:LO3/u;

.field public g:LO3/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO3/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LO3/u$a;-><init>(Lv3/g;)V

    sput-object v0, LO3/u;->h:LO3/u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, LO3/u;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LO3/u;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, LO3/u;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, LO3/u;->a:[B

    .line 7
    iput p2, p0, LO3/u;->b:I

    .line 8
    iput p3, p0, LO3/u;->c:I

    .line 9
    iput-boolean p4, p0, LO3/u;->d:Z

    .line 10
    iput-boolean p5, p0, LO3/u;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, LO3/u;->g:LO3/u;

    if-eq v0, p0, :cond_3

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-boolean v0, v0, LO3/u;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, LO3/u;->c:I

    iget v1, p0, LO3/u;->b:I

    sub-int/2addr v0, v1

    iget-object v1, p0, LO3/u;->g:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v1, v1, LO3/u;->c:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, LO3/u;->g:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-boolean v2, v2, LO3/u;->d:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, LO3/u;->g:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget v2, v2, LO3/u;->b:I

    :goto_0
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, LO3/u;->g:LO3/u;

    invoke-static {v1}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0}, LO3/u;->f(LO3/u;I)V

    invoke-virtual {p0}, LO3/u;->b()LO3/u;

    invoke-static {p0}, LO3/v;->b(LO3/u;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()LO3/u;
    .locals 4

    iget-object v0, p0, LO3/u;->f:LO3/u;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, LO3/u;->g:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v3, p0, LO3/u;->f:LO3/u;

    iput-object v3, v2, LO3/u;->f:LO3/u;

    iget-object v2, p0, LO3/u;->f:LO3/u;

    invoke-static {v2}, Lv3/l;->b(Ljava/lang/Object;)V

    iget-object v3, p0, LO3/u;->g:LO3/u;

    iput-object v3, v2, LO3/u;->g:LO3/u;

    iput-object v1, p0, LO3/u;->f:LO3/u;

    iput-object v1, p0, LO3/u;->g:LO3/u;

    return-object v0
.end method

.method public final c(LO3/u;)LO3/u;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, LO3/u;->g:LO3/u;

    iget-object v0, p0, LO3/u;->f:LO3/u;

    iput-object v0, p1, LO3/u;->f:LO3/u;

    iget-object v0, p0, LO3/u;->f:LO3/u;

    invoke-static {v0}, Lv3/l;->b(Ljava/lang/Object;)V

    iput-object p1, v0, LO3/u;->g:LO3/u;

    iput-object p1, p0, LO3/u;->f:LO3/u;

    return-object p1
.end method

.method public final d()LO3/u;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, LO3/u;->d:Z

    new-instance v0, LO3/u;

    iget-object v2, p0, LO3/u;->a:[B

    iget v3, p0, LO3/u;->b:I

    iget v4, p0, LO3/u;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, LO3/u;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final e(I)LO3/u;
    .locals 8

    if-lez p1, :cond_1

    iget v0, p0, LO3/u;->c:I

    iget v1, p0, LO3/u;->b:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, LO3/u;->d()LO3/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, LO3/v;->c()LO3/u;

    move-result-object v0

    iget-object v1, p0, LO3/u;->a:[B

    iget-object v2, v0, LO3/u;->a:[B

    iget v4, p0, LO3/u;->b:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Li3/k;->f([B[BIIIILjava/lang/Object;)[B

    :goto_0
    iget v1, v0, LO3/u;->b:I

    add-int/2addr v1, p1

    iput v1, v0, LO3/u;->c:I

    iget v1, p0, LO3/u;->b:I

    add-int/2addr v1, p1

    iput v1, p0, LO3/u;->b:I

    iget-object p1, p0, LO3/u;->g:LO3/u;

    invoke-static {p1}, Lv3/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, LO3/u;->c(LO3/u;)LO3/u;

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f(LO3/u;I)V
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, LO3/u;->e:Z

    if-eqz v0, :cond_3

    iget v5, p1, LO3/u;->c:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    iget-boolean v0, p1, LO3/u;->d:Z

    if-nez v0, :cond_1

    add-int v0, v5, p2

    iget v4, p1, LO3/u;->b:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_0

    iget-object v2, p1, LO3/u;->a:[B

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Li3/k;->f([B[BIIIILjava/lang/Object;)[B

    iget v0, p1, LO3/u;->c:I

    iget v1, p1, LO3/u;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, LO3/u;->c:I

    const/4 v0, 0x0

    iput v0, p1, LO3/u;->b:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, LO3/u;->a:[B

    iget-object v1, p1, LO3/u;->a:[B

    iget v2, p1, LO3/u;->c:I

    iget v3, p0, LO3/u;->b:I

    add-int v4, v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Li3/k;->d([B[BIII)[B

    iget v0, p1, LO3/u;->c:I

    add-int/2addr v0, p2

    iput v0, p1, LO3/u;->c:I

    iget p1, p0, LO3/u;->b:I

    add-int/2addr p1, p2

    iput p1, p0, LO3/u;->b:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
