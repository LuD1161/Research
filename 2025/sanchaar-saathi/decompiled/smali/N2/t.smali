.class public final synthetic LN2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/a;


# instance fields
.field public final synthetic a:LN2/u;


# direct methods
.method public synthetic constructor <init>(LN2/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN2/t;->a:LN2/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LN2/t;->a:LN2/u;

    check-cast p1, LK0/j;

    invoke-virtual {v0, p1}, LN2/u;->setWindowInfoListenerDisplayFeatures(LK0/j;)V

    return-void
.end method
