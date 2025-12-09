.class public Li0/n$e;
.super Li0/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/n;->g()Li0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li0/w;

.field public final synthetic d:Li0/n;


# direct methods
.method public constructor <init>(Li0/n;Li0/w;)V
    .locals 0

    iput-object p1, p0, Li0/n$e;->d:Li0/n;

    iput-object p2, p0, Li0/n$e;->c:Li0/w;

    invoke-direct {p0}, Li0/w;-><init>()V

    return-void
.end method


# virtual methods
.method public i(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Li0/n$e;->c:Li0/w;

    invoke-virtual {v0}, Li0/w;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li0/n$e;->c:Li0/w;

    invoke-virtual {v0, p1}, Li0/w;->i(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Li0/n$e;->d:Li0/n;

    invoke-virtual {v0, p1}, Li0/n;->L1(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Li0/n$e;->c:Li0/w;

    invoke-virtual {v0}, Li0/w;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li0/n$e;->d:Li0/n;

    invoke-virtual {v0}, Li0/n;->M1()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
