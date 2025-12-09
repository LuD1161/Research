.class public final Li0/f$g$b;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/f$g;->f(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Li0/f$g;

.field public final synthetic g:Landroid/view/ViewGroup;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lv3/w;


# direct methods
.method public constructor <init>(Li0/f$g;Landroid/view/ViewGroup;Ljava/lang/Object;Lv3/w;)V
    .locals 0

    iput-object p1, p0, Li0/f$g$b;->f:Li0/f$g;

    iput-object p2, p0, Li0/f$g$b;->g:Landroid/view/ViewGroup;

    iput-object p3, p0, Li0/f$g$b;->h:Ljava/lang/Object;

    iput-object p4, p0, Li0/f$g$b;->i:Lv3/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Li0/f$g$b;->f:Li0/f$g;

    invoke-virtual {v0}, Li0/f$g;->v()Li0/U;

    move-result-object v1

    iget-object v2, p0, Li0/f$g$b;->g:Landroid/view/ViewGroup;

    iget-object v3, p0, Li0/f$g$b;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Li0/U;->j(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Li0/f$g;->C(Ljava/lang/Object;)V

    iget-object v0, p0, Li0/f$g$b;->f:Li0/f$g;

    invoke-virtual {v0}, Li0/f$g;->s()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li0/f$g$b;->h:Ljava/lang/Object;

    iget-object v2, p0, Li0/f$g$b;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Li0/f$g$b;->i:Lv3/w;

    new-instance v1, Li0/f$g$b$a;

    iget-object v3, p0, Li0/f$g$b;->f:Li0/f$g;

    invoke-direct {v1, v3, v2}, Li0/f$g$b$a;-><init>(Li0/f$g;Landroid/view/ViewGroup;)V

    iput-object v1, v0, Lv3/w;->e:Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {v0}, Li0/I;->I0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started executing operations from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/f$g$b;->f:Li0/f$g;

    invoke-virtual {v1}, Li0/f$g;->t()Li0/Z$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li0/f$g$b;->f:Li0/f$g;

    invoke-virtual {v1}, Li0/f$g;->u()Li0/Z$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start transition "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for container "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li0/f$g$b;->a()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method
