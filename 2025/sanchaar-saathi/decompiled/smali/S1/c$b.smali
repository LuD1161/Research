.class public LS1/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LS1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LS1/c$b;->f:I

    return-void
.end method

.method public constructor <init>(LS1/c$b;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, LS1/c$b;->f:I

    .line 5
    invoke-virtual {p1}, LS1/c$b;->f()I

    move-result v0

    iput v0, p0, LS1/c$b;->a:I

    .line 6
    invoke-virtual {p1}, LS1/c$b;->b()I

    move-result v0

    iput v0, p0, LS1/c$b;->b:I

    .line 7
    invoke-virtual {p1}, LS1/c$b;->c()I

    move-result v0

    iput v0, p0, LS1/c$b;->c:I

    .line 8
    invoke-virtual {p1}, LS1/c$b;->e()J

    move-result-wide v0

    iput-wide v0, p0, LS1/c$b;->d:J

    .line 9
    invoke-virtual {p1}, LS1/c$b;->d()I

    move-result v0

    iput v0, p0, LS1/c$b;->e:I

    .line 10
    invoke-virtual {p1}, LS1/c$b;->a()I

    move-result p1

    iput p1, p0, LS1/c$b;->f:I

    return-void
.end method

.method public static synthetic g(LS1/c$b;I)I
    .locals 0

    iput p1, p0, LS1/c$b;->a:I

    return p1
.end method

.method public static synthetic h(LS1/c$b;J)J
    .locals 0

    iput-wide p1, p0, LS1/c$b;->d:J

    return-wide p1
.end method

.method public static synthetic j(LS1/c$b;I)I
    .locals 0

    iput p1, p0, LS1/c$b;->b:I

    return p1
.end method

.method public static synthetic k(LS1/c$b;I)I
    .locals 0

    iput p1, p0, LS1/c$b;->f:I

    return p1
.end method

.method public static synthetic l(LS1/c$b;I)I
    .locals 0

    iput p1, p0, LS1/c$b;->c:I

    return p1
.end method

.method public static synthetic m(LS1/c$b;I)I
    .locals 0

    iput p1, p0, LS1/c$b;->e:I

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LS1/c$b;->f:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LS1/c$b;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LS1/c$b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LS1/c$b;->e:I

    return v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, LS1/c$b;->d:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LS1/c$b;->a:I

    return v0
.end method

.method public final i()V
    .locals 2

    iget v0, p0, LS1/c$b;->e:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget v0, p0, LS1/c$b;->a:I

    iget v1, p0, LS1/c$b;->b:I

    iput v1, p0, LS1/c$b;->a:I

    iput v0, p0, LS1/c$b;->b:I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, LS1/c$b;->e:I

    return-void
.end method
