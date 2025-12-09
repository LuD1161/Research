.class public final Lv/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:I

.field public f:I

.field public g:I

.field public h:Z

.field public final synthetic i:Lv/f;


# direct methods
.method public constructor <init>(Lv/f;I)V
    .locals 1

    iput-object p1, p0, Lv/f$a;->i:Lv/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/f$a;->h:Z

    iput p2, p0, Lv/f$a;->e:I

    invoke-virtual {p1}, Lv/f;->d()I

    move-result p1

    iput p1, p0, Lv/f$a;->f:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lv/f$a;->g:I

    iget v1, p0, Lv/f$a;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lv/f$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv/f$a;->i:Lv/f;

    iget v1, p0, Lv/f$a;->g:I

    iget v2, p0, Lv/f$a;->e:I

    invoke-virtual {v0, v1, v2}, Lv/f;->b(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lv/f$a;->g:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lv/f$a;->g:I

    iput-boolean v2, p0, Lv/f$a;->h:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-boolean v0, p0, Lv/f$a;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lv/f$a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv/f$a;->g:I

    iget v1, p0, Lv/f$a;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lv/f$a;->f:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lv/f$a;->h:Z

    iget-object v1, p0, Lv/f$a;->i:Lv/f;

    invoke-virtual {v1, v0}, Lv/f;->h(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
