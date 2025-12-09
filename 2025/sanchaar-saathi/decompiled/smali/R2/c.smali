.class public final synthetic LR2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LR2/d$a;


# direct methods
.method public synthetic constructor <init>(LR2/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR2/c;->e:LR2/d$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LR2/c;->e:LR2/d$a;

    invoke-static {v0}, LR2/d$a;->a(LR2/d$a;)V

    return-void
.end method
