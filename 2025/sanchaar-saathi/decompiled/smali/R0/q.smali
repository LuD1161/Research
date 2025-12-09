.class public final synthetic LR0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LR0/r;

.field public final synthetic f:LZ0/m;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(LR0/r;LZ0/m;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/q;->e:LR0/r;

    iput-object p2, p0, LR0/q;->f:LZ0/m;

    iput-boolean p3, p0, LR0/q;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LR0/q;->e:LR0/r;

    iget-object v1, p0, LR0/q;->f:LZ0/m;

    iget-boolean v2, p0, LR0/q;->g:Z

    invoke-static {v0, v1, v2}, LR0/r;->e(LR0/r;LZ0/m;Z)V

    return-void
.end method
