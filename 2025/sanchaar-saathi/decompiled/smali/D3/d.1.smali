.class public final LD3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD3/C0;


# static fields
.field public static final e:LD3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LD3/d;

    invoke-direct {v0}, LD3/d;-><init>()V

    sput-object v0, LD3/d;->e:LD3/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
