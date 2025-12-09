.class public LD0/d$a;
.super LD0/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD0/d;->o0(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:LD0/d;


# direct methods
.method public constructor <init>(LD0/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, LD0/d$a;->b:LD0/d;

    iput-object p2, p0, LD0/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, LD0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public d(LD0/l;)V
    .locals 2

    iget-object v0, p0, LD0/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, LD0/z;->g(Landroid/view/View;F)V

    iget-object v0, p0, LD0/d$a;->a:Landroid/view/View;

    invoke-static {v0}, LD0/z;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, LD0/l;->U(LD0/l$f;)LD0/l;

    return-void
.end method
