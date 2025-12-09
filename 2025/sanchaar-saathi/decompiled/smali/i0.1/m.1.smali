.class public final synthetic Li0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Li0/f$g;

.field public final synthetic f:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Li0/f$g;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/m;->e:Li0/f$g;

    iput-object p2, p0, Li0/m;->f:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Li0/m;->e:Li0/f$g;

    iget-object v1, p0, Li0/m;->f:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Li0/f$g$b$a;->a(Li0/f$g;Landroid/view/ViewGroup;)V

    return-void
.end method
