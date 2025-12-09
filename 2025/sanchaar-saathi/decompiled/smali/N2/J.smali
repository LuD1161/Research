.class public LN2/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LJ0/a;


# direct methods
.method public constructor <init>(LJ0/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN2/J;->a:LJ0/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/concurrent/Executor;LR/a;)V
    .locals 1

    iget-object v0, p0, LN2/J;->a:LJ0/a;

    invoke-virtual {v0, p1, p2, p3}, LJ0/a;->b(Landroid/app/Activity;Ljava/util/concurrent/Executor;LR/a;)V

    return-void
.end method

.method public b(LR/a;)V
    .locals 1

    iget-object v0, p0, LN2/J;->a:LJ0/a;

    invoke-virtual {v0, p1}, LJ0/a;->c(LR/a;)V

    return-void
.end method
