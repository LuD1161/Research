.class public final synthetic LM0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LR/a;


# direct methods
.method public synthetic constructor <init>(LR/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/b;->e:LR/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LM0/b;->e:LR/a;

    invoke-static {v0}, LM0/c;->c(LR/a;)V

    return-void
.end method
