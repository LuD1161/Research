.class public LD0/c$j;
.super LD0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/c;->s(Landroid/view/ViewGroup;LD0/r;LD0/r;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:LD0/c;


# direct methods
.method public constructor <init>(LD0/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, LD0/c$j;->c:LD0/c;

    iput-object p2, p0, LD0/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, LD0/m;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, LD0/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public b(LD0/l;)V
    .locals 1

    iget-object p1, p0, LD0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LD0/w;->c(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LD0/c$j;->a:Z

    return-void
.end method

.method public c(LD0/l;)V
    .locals 1

    iget-object p1, p0, LD0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LD0/w;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(LD0/l;)V
    .locals 2

    iget-boolean v0, p0, LD0/c$j;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LD0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LD0/w;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, LD0/l;->U(LD0/l$f;)LD0/l;

    return-void
.end method

.method public e(LD0/l;)V
    .locals 1

    iget-object p1, p0, LD0/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LD0/w;->c(Landroid/view/ViewGroup;Z)V

    return-void
.end method
