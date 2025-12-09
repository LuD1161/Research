.class public final synthetic Lu0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lu0/r;


# direct methods
.method public synthetic constructor <init>(Lu0/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu0/q;->e:Lu0/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu0/q;->e:Lu0/r;

    invoke-static {v0}, Lu0/r;->a(Lu0/r;)V

    return-void
.end method
