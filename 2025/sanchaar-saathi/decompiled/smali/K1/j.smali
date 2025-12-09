.class public final LK1/j;
.super LK1/k;
.source "SourceFile"


# instance fields
.field public final transient g:I

.field public final transient h:I

.field public final synthetic i:LK1/k;


# direct methods
.method public constructor <init>(LK1/k;II)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, LK1/j;->i:LK1/k;

    invoke-direct {p0}, LK1/k;-><init>()V

    iput p2, p0, LK1/j;->g:I

    iput p3, p0, LK1/j;->h:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LK1/j;->h:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, LK1/w;->b(IILjava/lang/String;)I

    iget-object v0, p0, LK1/j;->i:LK1/k;

    iget v1, p0, LK1/j;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK1/j;->i:LK1/k;

    invoke-virtual {v0}, LK1/f;->s()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, LK1/j;->h:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LK1/k;->x(II)LK1/k;

    move-result-object p1

    return-object p1
.end method

.method public final t()I
    .locals 2

    iget-object v0, p0, LK1/j;->i:LK1/k;

    invoke-virtual {v0}, LK1/f;->t()I

    move-result v0

    iget v1, p0, LK1/j;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final u()I
    .locals 2

    iget-object v0, p0, LK1/j;->i:LK1/k;

    invoke-virtual {v0}, LK1/f;->t()I

    move-result v0

    iget v1, p0, LK1/j;->g:I

    add-int/2addr v0, v1

    iget v1, p0, LK1/j;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final x(II)LK1/k;
    .locals 2

    iget v0, p0, LK1/j;->h:I

    invoke-static {p1, p2, v0}, LK1/w;->d(III)V

    iget v0, p0, LK1/j;->g:I

    iget-object v1, p0, LK1/j;->i:LK1/k;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, LK1/k;->x(II)LK1/k;

    move-result-object p1

    return-object p1
.end method
