.class public abstract Lf0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/d$a;
    }
.end annotation


# static fields
.field public static final a:Lf0/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf0/d$a;-><init>(Lv3/g;)V

    sput-object v0, Lf0/d;->a:Lf0/d$a;

    return-void
.end method
