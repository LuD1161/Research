.class public abstract LM0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LM0/a$a;
    }
.end annotation


# static fields
.field public static final a:LM0/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LM0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LM0/a$a;-><init>(Lv3/g;)V

    sput-object v0, LM0/a;->a:LM0/a$a;

    return-void
.end method
