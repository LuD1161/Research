.class public LD0/M$a;
.super LD0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/M;->l0(Landroid/view/ViewGroup;LD0/r;ILD0/r;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:LD0/M;


# direct methods
.method public constructor <init>(LD0/M;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, LD0/M$a;->d:LD0/M;

    iput-object p2, p0, LD0/M$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, LD0/M$a;->b:Landroid/view/View;

    iput-object p4, p0, LD0/M$a;->c:Landroid/view/View;

    invoke-direct {p0}, LD0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(LD0/l;)V
    .locals 1

    iget-object p1, p0, LD0/M$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, LD0/w;->a(Landroid/view/ViewGroup;)LD0/u;

    move-result-object p1

    iget-object v0, p0, LD0/M$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, LD0/u;->c(Landroid/view/View;)V

    return-void
.end method

.method public d(LD0/l;)V
    .locals 3

    iget-object v0, p0, LD0/M$a;->c:Landroid/view/View;

    sget v1, LD0/i;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, LD0/M$a;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, LD0/w;->a(Landroid/view/ViewGroup;)LD0/u;

    move-result-object v0

    iget-object v1, p0, LD0/M$a;->b:Landroid/view/View;

    invoke-interface {v0, v1}, LD0/u;->c(Landroid/view/View;)V

    invoke-virtual {p1, p0}, LD0/l;->U(LD0/l$f;)LD0/l;

    return-void
.end method

.method public e(LD0/l;)V
    .locals 1

    iget-object p1, p0, LD0/M$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LD0/M$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, LD0/w;->a(Landroid/view/ViewGroup;)LD0/u;

    move-result-object p1

    iget-object v0, p0, LD0/M$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, LD0/u;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD0/M$a;->d:LD0/M;

    invoke-virtual {p1}, LD0/l;->k()V

    :goto_0
    return-void
.end method
