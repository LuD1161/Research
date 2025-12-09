.class public final LK1/i;
.super LK1/k;
.source "SourceFile"


# instance fields
.field public final transient g:LK1/k;


# direct methods
.method public constructor <init>(LK1/k;)V
    .locals 0

    invoke-direct {p0}, LK1/k;-><init>()V

    iput-object p1, p0, LK1/i;->g:LK1/k;

    return-void
.end method


# virtual methods
.method public final D(I)I
    .locals 1

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0, p1}, LK1/k;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const-string v2, "index"

    invoke-static {p1, v1, v2}, LK1/w;->b(IILjava/lang/String;)I

    invoke-virtual {p0, p1}, LK1/i;->D(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0, p1}, LK1/k;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, LK1/i;->D(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0, p1}, LK1/k;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, LK1/i;->D(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, LK1/k;->x(II)LK1/k;

    move-result-object p1

    return-object p1
.end method

.method public final w()LK1/k;
    .locals 1

    iget-object v0, p0, LK1/i;->g:LK1/k;

    return-object v0
.end method

.method public final x(II)LK1/k;
    .locals 2

    iget-object v0, p0, LK1/i;->g:LK1/k;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-static {p1, p2, v1}, LK1/w;->d(III)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {v0, v1, p2}, LK1/k;->x(II)LK1/k;

    move-result-object p1

    invoke-virtual {p1}, LK1/k;->w()LK1/k;

    move-result-object p1

    return-object p1
.end method
