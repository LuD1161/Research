.class public final LK1/g;
.super LK1/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, LK1/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)LK1/g;
    .locals 0

    invoke-super {p0, p1}, LK1/d;->a(Ljava/lang/Object;)LK1/d;

    return-object p0
.end method

.method public final c()LK1/k;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LK1/d;->c:Z

    iget-object v0, p0, LK1/d;->a:[Ljava/lang/Object;

    iget v1, p0, LK1/d;->b:I

    invoke-static {v0, v1}, LK1/k;->B([Ljava/lang/Object;I)LK1/k;

    move-result-object v0

    return-object v0
.end method
