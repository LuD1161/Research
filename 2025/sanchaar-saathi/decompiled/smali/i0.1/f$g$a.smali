.class public final Li0/f$g$a;
.super Lv3/m;
.source "SourceFile"

# interfaces
.implements Lu3/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/f$g;->d(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic f:Li0/f$g;

.field public final synthetic g:Landroid/view/ViewGroup;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li0/f$g;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Li0/f$g$a;->f:Li0/f$g;

    iput-object p2, p0, Li0/f$g$a;->g:Landroid/view/ViewGroup;

    iput-object p3, p0, Li0/f$g$a;->h:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Li0/f$g$a;->f:Li0/f$g;

    invoke-virtual {v0}, Li0/f$g;->v()Li0/U;

    move-result-object v0

    iget-object v1, p0, Li0/f$g$a;->g:Landroid/view/ViewGroup;

    iget-object v2, p0, Li0/f$g$a;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Li0/U;->e(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Li0/f$g$a;->a()V

    sget-object v0, Lh3/n;->a:Lh3/n;

    return-object v0
.end method
