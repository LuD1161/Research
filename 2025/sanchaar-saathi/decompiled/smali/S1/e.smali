.class public LS1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS1/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LS1/e$c;,
        LS1/e$a;,
        LS1/e$b;
    }
.end annotation


# instance fields
.field public a:LS1/e$b;

.field public b:Landroid/util/SparseArray;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LS1/e;->b:Landroid/util/SparseArray;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, LS1/e;->c:I

    return-void
.end method

.method public synthetic constructor <init>(LS1/i;)V
    .locals 0

    .line 4
    invoke-direct {p0}, LS1/e;-><init>()V

    return-void
.end method

.method public static synthetic b(LS1/e;LS1/e$b;)LS1/e$b;
    .locals 0

    iput-object p1, p0, LS1/e;->a:LS1/e$b;

    return-object p1
.end method


# virtual methods
.method public a(LS1/b$a;)V
    .locals 8

    invoke-virtual {p1}, LS1/b$a;->a()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, LS1/e$c;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, LS1/e$c;-><init>(LS1/e;LS1/i;)V

    iget-object v6, p0, LS1/e;->a:LS1/e$b;

    invoke-interface {v6, v4}, LS1/e$b;->a(Ljava/lang/Object;)LS1/f;

    move-result-object v6

    invoke-static {v5, v6}, LS1/e$c;->c(LS1/e$c;LS1/f;)LS1/f;

    invoke-static {v5}, LS1/e$c;->b(LS1/e$c;)LS1/f;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, LS1/f;->c(ILjava/lang/Object;)V

    iget-object v4, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LS1/b$a;->a()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v3, v1

    :goto_1
    iget-object v4, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LS1/e$c;

    invoke-static {v5}, LS1/e$c;->d(LS1/e$c;)I

    invoke-static {v5}, LS1/e$c;->e(LS1/e$c;)I

    move-result v6

    iget v7, p0, LS1/e;->c:I

    if-lt v6, v7, :cond_2

    invoke-static {v5}, LS1/e$c;->b(LS1/e$c;)LS1/f;

    move-result-object v5

    invoke-virtual {v5}, LS1/f;->a()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v5}, LS1/e$c;->b(LS1/e$c;)LS1/f;

    move-result-object v4

    invoke-virtual {v4, p1}, LS1/f;->b(LS1/b$a;)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, LS1/b$a;->a()Landroid/util/SparseArray;

    move-result-object v0

    move v2, v1

    :goto_4
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LS1/e$c;

    invoke-static {v3, v1}, LS1/e$c;->a(LS1/e$c;I)I

    invoke-static {v3}, LS1/e$c;->b(LS1/e$c;)LS1/f;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, LS1/f;->d(LS1/b$a;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LS1/e$c;

    invoke-static {v1}, LS1/e$c;->b(LS1/e$c;)LS1/f;

    move-result-object v1

    invoke-virtual {v1}, LS1/f;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LS1/e;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
