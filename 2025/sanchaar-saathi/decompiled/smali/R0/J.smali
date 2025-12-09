.class public final synthetic LR0/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LR0/K;

.field public final synthetic f:Ly2/a;


# direct methods
.method public synthetic constructor <init>(LR0/K;Ly2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/J;->e:LR0/K;

    iput-object p2, p0, LR0/J;->f:Ly2/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LR0/J;->e:LR0/K;

    iget-object v1, p0, LR0/J;->f:Ly2/a;

    invoke-static {v0, v1}, LR0/K;->a(LR0/K;Ly2/a;)V

    return-void
.end method
